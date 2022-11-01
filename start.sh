if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/scroogex/adgfilter.git /adgfilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /adgfilter
fi
cd /adgfilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py