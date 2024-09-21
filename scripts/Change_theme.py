import os
import random
import subprocess

wallpaper_dir = os.path.expanduser("~/Wallpapers/")
wallpapers = [wallpaper_dir + i for i in os.listdir(wallpaper_dir)]
wallpaper = random.choice(wallpapers)

command1 = f"swww img {wallpaper} --transition-fps 30 --transition-type any --transition-duration 0.7"
subprocess.call(command1, shell=True)
