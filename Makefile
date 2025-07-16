serve:
	zola serve --open
drafts:
	zola serve --drafts --open
download:
	yt-dlp -x --audio-format mp3 -o "static/audio/$(ID).mp3" "https://www.youtube.com/watch?v=$(ID)"
waveform:
	audiowaveform -i static/audio/$(NAME).mp3 -o static/waveforms/$(NAME).js --pixels-per-second 20 --bits 8 --output-format json
id3:
	echo "scripts/id3.sh track title year static/audio/filename.mp3"
