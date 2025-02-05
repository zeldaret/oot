from . import extract_xml_z64

if __name__ == "__main__":
    profile = True
    if profile:
        import cProfile

        cProfile.run("extract_xml_z64.main()", "cprof_assets421.txt")
    else:
        extract_xml_z64.main()
