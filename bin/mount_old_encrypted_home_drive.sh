ROOT=/media/a01ca0f3-1300-4831-9cab-1bb547c339c9/home/.ecryptfs/$USER
TARGET=/mnt/$USER

# ROOT should be the parent of the .ecryptfs and .Private folders

sudo mkdir -p $TARGET
cd $ROOT

echo Type your password:
PASS=$(ecryptfs-unwrap-passphrase .ecryptfs/wrapped-passphrase | sed s/Passphrase:\ //)
SIG1=$(head -n1 .ecryptfs/Private.sig)
SIG2=$(tail -n1 .ecryptfs/Private.sig)

echo Passphrase:
echo $PASS
echo Signatures:
echo $SIG1
echo $SIG2

echo Should be empty:
sudo keyctl clear @u
sudo keyctl list @u

echo Do not type anything:
echo $PASS | sudo ecryptfs-add-passphrase --fnek

echo Sould have signatures:
sudo keyctl list @u

echo Mounting $ROOT on $TARGET...
sudo mount -t ecryptfs -o key=passphrase,ecryptfs_cipher=aes,ecryptfs_key_bytes=16,ecryptfs_passthrough=no,ecryptfs_enable_filename_crypto=yes,ecryptfs_sig=$SIG1,ecryptfs_fnek_sig=$SIG2,passwd=$(echo $PASS) .Private $TARGET

ls $TARGET