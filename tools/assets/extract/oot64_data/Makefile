ROOT := ../../../../

DATA_FILES := actor_ids.py object_ids.py entrance_table_mini.py scene_table_mini.py dmadata_table.py

default:
	@echo 'Run `make all` or with the appropriate target to (re)build data files'

all: $(DATA_FILES)

distclean:
	$(RM) $(DATA_FILES)

.PHONY: default all distclean

actor_ids.py: $(ROOT)/include/tables/actor_table.h
	echo '# This file was generated from $<' > $@
	echo >> $@
	echo 'DATA = (' >> $@
	cpp -P \
	 -D'DEFINE_ACTOR(_0,enumValue,_2,_3)=#enumValue,' \
	 -D'DEFINE_ACTOR_UNSET(enumValue)=#enumValue,' \
	 -D'DEFINE_ACTOR_INTERNAL=DEFINE_ACTOR' \
	 $< >> $@
	echo ')' >> $@

object_ids.py: $(ROOT)/include/tables/object_table.h
	echo '# This file was generated from $<' > $@
	echo >> $@
	echo 'DATA = (' >> $@
	cpp -P \
	 -D'DEFINE_OBJECT(_0,enumValue)=#enumValue,' \
	 -D'DEFINE_OBJECT_UNSET(enumValue)=#enumValue,' \
	 -D'DEFINE_OBJECT_NULL(_0,enumValue)=#enumValue,' \
	 $< >> $@
	echo ')' >> $@

entrance_table_mini.py: $(ROOT)/include/tables/entrance_table.h
	echo '# This file was generated from $<' > $@
	echo >> $@
	echo 'DATA = (' >> $@
	cpp -P \
	 -D'DEFINE_ENTRANCE(enumValue, sceneId, spawn, _3, _4, _5, _6)=(#enumValue, #sceneId, spawn),' \
	 $< >> $@
	echo ')' >> $@

scene_table_mini.py: $(ROOT)/include/tables/scene_table.h
	echo '# This file was generated from $<' > $@
	echo >> $@
	echo 'DATA = (' >> $@
	cpp -P \
	 -D'DEFINE_SCENE(name, _1, enumValue, _3, _4, _5)=(#name, #enumValue),' \
	 $< >> $@
	echo ')' >> $@

dmadata_table.py: $(ROOT)/include/tables/dmadata_table_mqdbg.h
	echo '# This file was generated from $<' > $@
	echo >> $@
	echo 'DATA = (' >> $@
	cpp -P \
	 -D'DEFINE_DMA_ENTRY(name, _1)=#name,' \
	 $< >> $@
	echo ')' >> $@
