if [ -z "$(ls -A /samples)" ];
   then
      echo "Mounting SD card"
      sudo mount -o ro /dev/sda /samples/
fi

killall python
cd ~/SamplerBox
python samplerbox.py
