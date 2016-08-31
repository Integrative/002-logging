for i in /etc/profile /etc/skel/.bashrc /root/.bashrc /home/*/.bashrc; do
    if ! grep -q ". /etc/bash_audit" "$i"; then
        echo "[ -f /etc/bash_audit ] && . /etc/bash_audit" >>"$i"
    fi
done
