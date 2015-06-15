#from distutils.core import setup
#import py2app
#
#setup(
#	plugin = ['ITunesCommunication.py']
#)

import speech_recognition as sr
r = sr.Recognizer()
with sr.Microphone() as source: audio = r.listen(source)

try:
    print("you said" + r.recognize(audio))
except LookupError:
    print("Could not understand")