while :
do
    read -n1 -p "[P]ersonal [G]aming [S]erver ?   " choice
    echo
    case ${choice^} in
        P) ./runp.sh;;
        G) ./rung.sh;;
        S) ./runs.sh;;
        *) continue;;
    esac
    break
done
