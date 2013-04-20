
载入模块：

    :load Ex-2.hs

执行结果：

	*Main> lastButOne []
	*** Exception: Prelude.init: empty list

	*Main> lastButOne [1]
	*** Exception: Prelude.last: empty list

	*Main> lastButOne [1,2]
	1

	*Main> lastButOne ['a'..'z']
	'y'
