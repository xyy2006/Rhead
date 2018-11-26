alias qstata='qstat -asnl'
alias lsa='ls -ahltr'
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -f ~/.profile ]; then
        . ~/.profile
fi
today()
{
echo This is a `date +"%A %d in %B of %Y (%r)"`
return
}


PS1="[\u@\h \w]\$ "

alias vnc_server_start='vnc4server :16 -geometry 1920x1080 -depth 16 -name yyang'
alias vnc_client_ssh_to='ssh -L5916:localhost:5916 ep-research'
alias qrsh_quick='qrsh -l mem_requested=1g'
alias ps_unc='ps -fux|grep vnc'
alias qu='qstat -u "*"'
alias qfu='qstat -f -u "*"'
alias nohup_jupyter_nb='nohup jupyter-notebook --no-browser &'

# insert the specific version of R bin into PATH.
PATH="/gnshealthcare/software/R/3.3.2/bin:/home/yyang/anaconda3/bin:$PATH"
export LD_LIBRARY_PATH=/gnshealthcare/software/boost/gcc_5.4/boost_1_62_0/lib:$LD_LIBRARY_PATH
