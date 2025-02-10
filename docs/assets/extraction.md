Assets are not committed to the repo; instead, they are extracted from the ROM files as part of `make setup`.

Assets are extracted to `extracted/VERSION/assets` (for example `extracted/ntsc-1.0/assets` for the `ntsc-1.0` version), based on the descriptions stored in xml files in `assets/xml/`.

For details on the xml files contents, see [the assets xml specification file](../../tools/assets/descriptor/spec.md).

The extraction tool can use [rich](https://github.com/Textualize/rich) if installed to make output prettier.
If you are looking at output or errors from during extraction, consider installing rich for a better experience: `.venv/bin/python3 -m pip install rich`

To run the extraction outside of `make setup`, use `./tools/extract_assets.sh VERSION`.
- Pass `-f` to force extraction: otherwise only assets for which xmls were modified will be extracted.
- Pass `-j` to use multiprocessing, making extraction quicker. Note that this makes for less readable errors if any error happens.
- Pass `-s name` to extract assets using baserom file `name`.
- Pass `-r -s 'name.*'` to extract assets using baserom files whose name match regular expression `name.*`.
