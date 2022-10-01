# Fix all python files.
#
# You need to install yapf, c.f., https://github.com/google/yapf
yapf -ir ./fastpitch --style .style.yapf
yapf -ir ./common --style .style.yapf
yapf -ir *.py --style .style.yapf
