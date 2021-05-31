# SamplerBox
Alternative/extended version of [Joseph Ernest's samplerbox](https://github.com/josephernest/SamplerBox)

Website: https://homspace.nl/samplerbox/

License: [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)

Dependencies:
sudo apt-get install git python-dev python-pip python-numpy cython python-smbus portaudio19-dev libportaudio2 libffi-dev
sudo apt install pip libxml2 libxml2-dev libxslt1.1 libxslt1-dev swig
sudo pip install rtmidi-python pyaudio cffi sounddevice

sudo apt install python-pip


git clone https://github.com/gesellkammer/rtmidi2
cd rtmidi2
sudo python setup.py install

git clone https://github.com/vishnubob/python-midi/
cd python-midi
sudo python setup.py install

pip install psutil
pip install pyalsaaudio
pip install pymidi
pip install py-midi
pip install sequencer
