bucket_name=dpiapp
ACCESS_KEY_ID=AKIAUADMXUG4TTZPZPO5
SECRET_ACCESS_KEY=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
mount_point=""$PWD"/"$bucket_name""



echo ""$ACCESS_KEY_ID":"$SECRET_ACCESS_KEY"" > ${HOME}/.passwd-s3fs
chmod 600 ${HOME}/.passwd-s3fs

mkdir -p $mount_point


/usr/local/bin/s3fs "$bucket_name" "$mount_point" -o passwd_file=${HOME}/.passwd-s3fs -o allow_other -o use_path_request_style -o nonempty

/usr/local/bin/s3fs "$bucket_name" "$mount_point" -o passwd_file=${HOME}/.passwd-s3fs -o allow_other -o use_path_request_style o dbglevel=info -f -o curldbg