from invoke import task
import shutil


@task
def update_doku(c):
    """ updates the documentation web site """
    src = "/home/perrin-w/Documents/ads-react-signup/react-signup-documentation/public"
    dst = "/home/perrin-w/Documents/ads-react-signup/react-signup/docs"
    c.run("git checkout DOKU")
    shutil.rmtree('docs')
    shutil.copytree(src, dst, copy_function=shutil.copy)
    c.run("git add . && git commit && git push")
