import os
from subprocess import run, Popen, PIPE

from test_stuff import fuzzel_choice

CURRENT_DIR: str = os.path.dirname(os.path.abspath(__file__))


def fuzzel_select(options: list[str]) -> str:
    """
    Show a fuzzel menu with the given options and return the selected string.
    Raises RuntimeError if fuzzel is not installed or user cancels the menu.
    """
    process = run(
        ["fuzzel", "--dmenu"],
        input="\n".join(options),
        text=True,
        stdout=PIPE,
        check=False,
    )
    if process.returncode != 0 or not process.stdout.strip():
        raise RuntimeError("No selection made or fuzzel failed")
    return process.stdout.strip()


def run_script(script_path: str) -> None:
    """Start script_path in a separate session and exit."""
    Popen(["/bin/bash", script_path], start_new_session=True)


def get_script_list() -> list[str]:
    names: list[str] = os.listdir(os.path.join(CURRENT_DIR, "scripts/"))
    return names


def run_fuzzel(options: list[str]) -> str:
    return fuzzel_choice(options)


def main():
    names: list[str] = get_script_list()
    user_choice: str = fuzzel_select(names)

    run_script(os.path.join(CURRENT_DIR, f"scripts/{user_choice}/run.sh"))


if __name__ == "__main__":
    main()
