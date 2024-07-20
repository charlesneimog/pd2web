import os
import platform
import subprocess
import sys
import zipfile
import shutil

import requests

from .Helpers import pd4web_print
from .Pd4Web import Pd4Web


class ExternalsCompiler:
    def __init__(self, Pd4Web: Pd4Web):
        self.Pd4Web = Pd4Web
        self.InitVariables()
        if not os.path.exists(Pd4Web.APPDATA + "/emsdk"):
            emccGithub = "https://api.github.com/repos/emscripten-core/emsdk/tags"
            response = requests.get(emccGithub)
            responseJson = response.json()
            sourceCodeLink = responseJson[0]["zipball_url"]
            response = requests.get(sourceCodeLink)
            EmccZip = self.Pd4Web.APPDATA + "/emcc.zip"
            OK = Pd4Web.DownloadZip(sourceCodeLink, EmccZip, "emcc")
            if not OK:
                raise Exception("Failed to download emcc")
            with zipfile.ZipFile(EmccZip, "r") as zip_ref:
                zip_ref.extractall(Pd4Web.APPDATA)
                extractFolderName = zip_ref.namelist()[0]
                os.rename(
                    self.Pd4Web.APPDATA + "/" + extractFolderName,
                    self.Pd4Web.APPDATA + "/emsdk",
                )
                try:
                    os.remove(EmccZip)
                except:
                    pd4web_print("Failed to remove emcc.zip", color="yellow")
            self.InstallEMCC()

    def InitVariables(self):
        self.EMSDK = self.Pd4Web.APPDATA + "/emsdk/emsdk"
        if platform.system() == "Windows":
            self.EMCMAKE = self.Pd4Web.APPDATA + "/emsdk/upstream/emscripten/emcmake.bat"
        else:
            self.EMCMAKE = self.Pd4Web.APPDATA + "/emsdk/upstream/emscripten/emcmake"
        self.CMAKE = self.GetCmake()

    def GetCmake(self):
        cmake_path = shutil.which("cmake")
        if cmake_path is None:
            raise Exception("CMake not found, please install it")
        return cmake_path

    def InstallEMCC(self):
        if platform.system() == "Windows":
            os.system(f"cmd /C {self.EMSDK} install latest")
            os.system(f"cmd /C {self.EMSDK} activate latest")
        else:
            os.environ["EMSDK_QUIET"] = "1"
            os.system(f"chmod +x {self.EMSDK}")
            os.system(f"{self.EMSDK} install latest")
            os.system(f"{self.EMSDK} activate latest")

    def __str__(self):
        return "< Compiler >"

    def __repr__(self):
        return "< Compiler >"