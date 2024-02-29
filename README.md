<p align="center">
  <h1 align="center">pd4web</h1>
  <p align="center">
    <a href="https://charlesneimog.github.io/pd4web">
      <img src="https://raw.githubusercontent.com/charlesneimog/pd4web/main/docs/assets/icon.svg" width="10%" alt="Logo">
    </a>
  </p>
  <h4 align="center">pd4web: Running PureData Patches in Browsers with Web Audio</h4>
</p>

<p align="center">
  <a href="https://github.com/charlesneimog/pd4web/releases/latest"><img src="https://img.shields.io/github/release/charlesneimog/pd4web?include_prereleases" alt="Release"></a>
  <a href="https://pypistats.org/packages/pd4web"><img src="https://img.shields.io/pypi/pyversions/pd4web" alt="Version"></a>
  <a href="https://zenodo.org/badge/latestdoi/685549750"><img src="https://zenodo.org/badge/685549750.svg" alt="DOI"></a>
</p>

<p align="center">
    <a href="https://pypistats.org/packages/pd4web"><img src="https://img.shields.io/pypi/dm/pd4web" alt="Downloads"></a>
    <a href="https://img.shields.io/pypi/pyversions/pd4web"><img src="https://img.shields.io/badge/platforms-macOS%20%7C%20Windows%20%7C%20Linux-green" alt="License"></a>
</p>

<p align="center">
  <a href="https://github.com/charlesneimog/pd4web/actions/workflows/pd4web-tests.yml"><img src="https://github.com/charlesneimog/pd4web/actions/workflows/pd4web-tests.yml/badge.svg" alt="Tests"></a>
</p>

`pd4web` empowers you to execute PureData patches directly in web browsers using advanced Web Audio technologies. This tool distinguishes itself from alternative approaches like [hvcc](https://github.com/Wasted-Audio/hvcc) and [WebPd](https://github.com/sebpiq/WebPd) by compiling the source code of [libpd](https://github.com/libpd/libpd), a feat made possible largely due to the contributions of  [claudeha](https://github.com/claudeha). With `pd4web`, you can compile virtually any PureData vanilla patch, along with a wide list of externals.

<h3 align="center">Examples</h3>
<p align="center">Click to Expand!</p>

<details>
  <summary><b>1. Simple Patch</b></summary>
  <p align="center">
    <img src="https://github.com/charlesneimog/pd4web/blob/main/docs/img/Simple-patch.png" width="80%" alt="Logo">
  </p>
</details>

<details>
  <summary><b>2. Interaction with p5js</b></summary>
<p align="center">
    <img src="https://github.com/charlesneimog/pd4web/blob/main/docs/img/Compiled-I.png" width="70%" alt="Logo">
</p>
<p align="center">
    <a href="https://charlesneimog.github.io/Projeto/">WebSite</a>
</p>
</details>

<details>
  <summary><b>3. Live Score (VexFlow) </b></summary>
<p align="center">
    <img src="https://github.com/charlesneimog/pd4web/blob/main/docs/img/Canticos.png" width="70%" alt="Logo">
</p>
<p align="center">
    <a href="https://charlesneimog.github.io/Canticos-de-Silicio-I/webpatch/">WebSite</a>
</p>
</details>

-----
<h3 align="center">Questions, doubts, help</h3>

* Check the Discussions Sections [here](https://github.com/charlesneimog/pd4web/discussions/).

<h3 align="center">Issues</h3>

* Check the Discussions Issues [here](https://github.com/charlesneimog/pd4web/issues/).

<h3 align="center">Acknowledgements</h3>

* Zack Lee for the GUI interface for patches;
* Jonathan Wilkes, Ivica Ico Bukvic, and the Purr Data team;
* Claude Heiland-Allen for creating [empd](https://mathr.co.uk/empd/);
* Dan Wilcox for [libpd](https://github.com/libpd/libpd);
* Miller Puckette and the Pd community for developing and maintaining Pd;


<h3 align="center"> Details and Documentation</h3>

For more details and documentation, please visit the [Docs](https://charlesneimog.github.io/pd4web/) section of this project.

<h3 align="center">Contribute</h3>

Contribute to enabling running PureData in WebBrowsers! These are the main areas for your  contributions:

* The `pd4web/lib/` folder, which contains files with special steps for compiling certain `externals/libraries`.
* The `pd4web/src/template.c`, used to pd4web to build the `main.c` file.
* The `pd4web/pd4web.py`, which configures the `main.c` file.





