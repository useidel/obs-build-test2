# obs-build-test2
This is an simple example how to integrate the content of your Github repo with package (re-)builds on the [Open Build Service (OBS)](https://build.opensuse.org/) using [Github Actions](https://github.com/features/actions).

---

The basic steps are:

1. Create the (target) package at OBS
2. Setup the Github Actions Workflow
  - A YAML file in *.github/workflows/* is the minimum
  - Additional shell scripts are not very unlikely
  - You will need to reference your OBS credentials (see next point)
3. Store your OBS credentials as an Actions Secret
4. Upload/test/fix/improve

For detailed information about these steps please refer to the corresponding documention on OBS and Github, respectively. Here are the links for this particular setup

1. [OBS package test](https://build.opensuse.org/package/show/home:useidel/test)
2. [Github Action Workflow](https://github.com/useidel/obs-build-test2/actions/workflows/rpmbuild_obs.yml)
3. [Github Action Secret](https://github.com/useidel/obs-build-test2/settings/secrets/actions)

---

Here I use a dummy RPM package which should be rebuild once the SPEC file changes. For pure technical reasons I store the source code of that package in this repo but it could be very well somewhere else. I have not included fancy things like patching the source while building the package. Plus, right now the automation is triggered by *git push*. I plan to change this, since even updates to any other file in this repo will kick of the Github Actions workflow. The plan is to use the creation of new [releases](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository) as trigger.

