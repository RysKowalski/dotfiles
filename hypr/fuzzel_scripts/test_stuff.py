import random


def fuzzel_choice(options: list[str]) -> str:
    print(options)
    random_choice: str = options[random.randint(0, len(options) - 1)]
    print(random_choice)
    return random_choice


if __name__ == "__main__":
    options = ["opt1", "opt2", "skibidi3"]
    fuzzel_choice(options)
