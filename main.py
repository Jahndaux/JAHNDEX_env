import subprocess
import os

# 1. Convert video to WAV audio
input_video = "input.mp4"
output_audio = "audio.wav"
subprocess.run(["ffmpeg", "-i", input_video, output_audio])

# 2. Run Demucs
os.system(f"demucs {output_audio}")
