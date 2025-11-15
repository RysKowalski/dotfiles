import os
import time
import sys

args: list[str] = sys.argv[1:]  # Pobranie argumentów pomijając nazwę skryptu
args_str: str = " ".join(args)  # Połączenie argumentów w jeden ciąg

while True:
    ret: int = os.system(f"sl {args_str}")
    time.sleep(0.05)
