#Note this script only works when number of windows are between 1 to 4
from typing import List
from kitty.boss import Boss
from kittens.tui.handler import result_handler

def main(args: List[str]) -> str:
    pass

@result_handler(no_ui=True)
def handle_result(args: List[str], answer: str, target_window_id: int, boss: Boss) -> None:
    w = boss.window_id_map.get(target_window_id)
    if args[1] == "left":
        try:
            boss.call_remote_control(w, ("resize-window", "--axis=horizontal", "--increment=1", "--match=neighbor:right"))
        except Exception:
            pass

        try:
            boss.call_remote_control(w, ("resize-window", "--axis=horizontal", "--increment=-1", "--match=neighbor:left"))
        except Exception:
            pass
    elif args[1] == "right":
        try:
            boss.call_remote_control(w, ("resize-window", "--axis=horizontal", "--increment=-1", "--match=neighbor:right"))
        except Exception:
            pass

        try:
            boss.call_remote_control(w, ("resize-window", "--axis=horizontal", "--increment=1", "--match=neighbor:left"))
        except Exception:
            pass
    elif args[1] == "up":
        try:
            boss.call_remote_control(w, ("resize-window", "--axis=vertical", "--increment=-1", "--match=neighbor:top"))
        except Exception:
            pass

        try:
            boss.call_remote_control(w, ("resize-window", "--axis=vertical", "--increment=1", "--match=neighbor:bottom"))
        except Exception:
            pass
    elif args[1] == "down":
        try:
            boss.call_remote_control(w, ("resize-window", "--axis=vertical", "--increment=1", "--match=neighbor:top"))
        except Exception:
            pass

        try:
            boss.call_remote_control(w, ("resize-window", "--axis=vertical", "--increment=-1", "--match=neighbor:bottom"))
        except Exception:
            pass
