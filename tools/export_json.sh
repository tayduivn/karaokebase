# Build a JSON export from a karas database
# It needs a karas.sqlite3 database generated by karaoke mugen 


DB=$1

sqlite3 $DB "SELECT '{\"karas\":[' || group_concat(json_object('kid',kid,'title',title,'duration',duration,'audiogain',gain,'year',year,'mediafile',mediafile,'dateadded',created_at,'datemodif',modified_at,'order',songorder,'serie',serie,'singer',singer,'type',songtype,'creator',creator,'lang',language,'author',author,'tags',misc,'songwriter',songwriter)) || ']}' FROM all_karas;"
