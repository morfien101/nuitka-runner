docker run -it --rm -v $(pwd):/src morfien101/nuitka:py3.10 -c 'cd /src && pip install -r pip-requirements.txt && python -m nuitka --onefile -o cowsay_example main.py' \
&& chmod 550 cowsay_example \
&& docker run -it --rm -v $(pwd)/cowsay_example:/cowsay_example ubuntu:latest /cowsay_example