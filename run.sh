while :
do
    read -n1 -p "[P]ersonal [G]aming [S]erver ?   " choice
    echo
    case ${choice^} in
        P) ./runp;;
        G) ./rung;;
        S) ./runs;;
        *) continue;;
    esac
    break
done
