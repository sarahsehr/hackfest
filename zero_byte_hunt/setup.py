#!/usr/bin/env python

from errno import EEXIST
from os import makedirs
from os.path import join as path_join
from random import randint, random
from string import ascii_lowercase


def mkdir_p(path):
    try:
        makedirs(path)
    except OSError as exc:
        if exc.errno == EEXIST:
            pass
        else: raise

def generate_aa_zz():
    for x in ascii_lowercase:
        for y in ascii_lowercase:
            yield "{0}{1}".format(x, y)

basedir = "/nutricate/production/trans/spool"
empty_probability = 0.1

for first_level in generate_aa_zz():
    for second_level in generate_aa_zz():
        dir_name = path_join(basedir, first_level, second_level)
        mkdir_p(dir_name)
        n = randint(-20, 4)     # many empty directories
        while n > 0:
            with file(path_join(dir_name, str(n)), "w") as f:
                if random() > empty_probability:
                    f.write("1")
            n -= 1
