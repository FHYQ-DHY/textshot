<h1 align="center">TextShot</h1>

<div align="center">
<a href="https://github.com/ianzhao05/textshot/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/ianzhao05/textshot"></a>
<a href="https://github.com/ianzhao05/textshot/network"><img alt="GitHub forks" src="https://img.shields.io/github/forks/ianzhao05/textshot"></a>
<a href="https://github.com/ianzhao05/textshot/blob/master/LICENSE.txt"><img alt="GitHub license" src="https://img.shields.io/github/license/ianzhao05/textshot"></a>
<a href="https://github.com/psf/black"><img alt="Code style: black" src="https://img.shields.io/badge/code%20style-black-000000.svg"></a>
</div>

Take a screenshot and copy its text content to the clipboard. Works on Windows, macOS, and most modern Linux distros.

![TextShot Demo](https://i.imgur.com/Z0Ng13S.gif)

## Use

`textshot.py -h` prints the available command line options:

    usage: textshot.py [-h] [-i INTERVAL] [langs]

    Take a screenshot and copy its text content to the clipboard.

    positional arguments:
    langs                 languages passed to tesseract, eg. "eng+fra" (default: eng)

    optional arguments:
    -h, --help            show this help message and exit
    -i INTERVAL, --interval INTERVAL
                            select a screen region then take textshots every INTERVAL milliseconds

### Examples

- Basic usage: `python textshot.py` opens an overlay where a rectangle can be drawn around the text to be copied.

- Alternate languages: `python textshot.py eng+fra` specifies use of English as the primary language and French as the secondary language. Make sure that the appropriate data files for Tesseract are installed for other languages. A list of all supported languages can be found [here](https://github.com/tesseract-ocr/tesseract/blob/master/doc/tesseract.1.asc#languages-and-scripts).

- Continuously copy text content: `python textshot.py --interval 200` draw a rectangle at a screen region then copy text from it every 200ms.

### Hotkeys

It is recommended to attach a global hotkey to this tool so you can run it without opening a console and typing in the command.

On **Windows**, one can accomplish this by using an [AutoHotkey](https://www.autohotkey.com/) script; `textshot.ahk` contains a sample AHK script that can be used.  
On **Ubuntu**, open the Keyboard Settings, which shows you all the Gnome shortcuts. At the bottom there is a `+` button to add your own shortcuts. Click it and set the command to `/usr/bin/python3 <path-to-textshot.py>`. In case you are using a virtual environment, the `python3` path above should point to the environment's `python3` instead of the global `python3`.  
The process on other operating systems can be found by searching how to run a shell command with a keyboard shortcut.

## Installation

- Install [Python 3](https://www.python.org/downloads/)
- Clone this repository... `git clone https://github.com/ianzhao05/textshot.git`
- ...and `cd` into it `cd textshot`
- (Optional) Create a virtual environment, for example with `python -m venv .venv`, and activate it
- Install the required packages with `pip install -r requirements.txt`
- Install [Google's Tesseract OCR Engine](https://github.com/tesseract-ocr/tesseract), and ensure that `tesseract` can be reached from the command line by adding the directory to your system path.
- `python textshot.py`

**Mac users:** You may need to give permission to capture the screen. You can do so by going to System Preferences > Security & Privacy > Privacy > Screen Recording, then checking the box for Terminal/iTerm.  
**Linux users:** If the text shows up correctly in the notification, but you cannot paste it, install `xclip` (e.g. with `sudo apt install xclip`).

@rigred has added this to the AUR, so Arch Linux users can install the package `textshot-git` with their AUR helper. For example, `yay -S textshot-git`. This may not be up to date, so if you encounter issues, use the normal installation method above.
