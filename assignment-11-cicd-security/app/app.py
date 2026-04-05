import os

def get_user_input():
    user_input = input("Enter your name: ")
    os.system("echo " + user_input)

if __name__ == "__main__":
    get_user_input()
