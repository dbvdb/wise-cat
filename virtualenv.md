# Create and config virtualenvwrapper for python

```bash
pip install virtualenv virtualenvwrapper
mkdir ~/.virtualenvs

echo "export WORKON_HOME=~/.virtualenvs
VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh" > ~/.bashrc

source .bashrc
```
