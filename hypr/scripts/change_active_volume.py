import subprocess
import sys


def run_command(command: str) -> str:
    result: subprocess.CompletedProcess[str] = subprocess.run(
        command,
        shell=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        check=False,
    )
    return result.stdout


if len(sys.argv) < 2:
    print("example usage: python script 5%+")

volumeChange: str = sys.argv[1]

activeWindowPidLine: str = run_command("hyprctl activewindow | grep pid")

activeWindowPid: str = activeWindowPidLine.split(" ")[-1]

print(activeWindowPid)
