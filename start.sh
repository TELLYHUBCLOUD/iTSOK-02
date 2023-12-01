if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TELLYHUBCLOUD/iTSOK_BOT-2.git /PiroAutoFilterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /iTSOK_BOT-2
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting iTSOK_BOT-2...."
python3 bot.py
