syntax keyword sqlKeyword  DECLARE SET WITH AS SELECT IS NOT CASE WHEN AND RIGHT
syntax keyword sqlKeyword  FROM INNER JOIN LEFT ON WHERE BY GROUP THEN ELSE END OR .
syntax region  sqlString start='\'' end='\''
syntax match   sqlStringDelim '\''

syntax match   sqlFunction '\v\zs\w+\ze\('
syntax match   sqlDelim    '('
syntax match   sqlDelim    ')'
syntax match   sqlVariable '\v\@\w+'
syntax match   sqlPeriod   '\v\w\zs\.\ze\w'


