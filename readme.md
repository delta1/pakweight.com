# pakweight.com

- `zola serve`

### process

- download, rename mp3
- set id3 tags
```
scripts/id3.sh track title year static/audio/filename.mp3
```
- `audiowaveform -i static/audio/infile.mp3 -o static/waveforms/outfile.json --pixels-per-second 20 --bits 8 --output-format json`
- copy json and make data js file
- copy markdown file and update metadata and content
