from typing import List
from kitty.boss import Boss
from kittens.tui.handler import result_handler
from json import loads

def main(args: List[str]) -> str:
    pass

@result_handler(no_ui=True)
def handle_result(args: List[str], answer: str, target_window_id: int, boss: Boss) -> None:
    w = boss.window_id_map.get(target_window_id)
    opacity = loads(boss.call_remote_control(w, ('ls', f'--match=id:{w.id}')))[0].get("background_opacity")

    if opacity == 0.0:
        boss.call_remote_control(w, ('set-background-opacity', f'--match=id:{w.id}', '1.0'))
    else:
        boss.call_remote_control(w, ('set-background-opacity', f'--match=id:{w.id}', '0.0'))
