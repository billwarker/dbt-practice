import os
from flask import Flask

app = Flask(__name__)
script = 'script.sh'
command = f'sh {script}'


@app.route("/")
def invoke():
    os.system(command)
    return command


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))