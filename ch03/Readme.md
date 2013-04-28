## Ex-1-P60.hs

运行：

	Prelude> :load Ex-1.hs
	*Main> let x = Cons 'a' Nil
	*Main> toList x
	"a"
	*Main> let x = Cons 'a' (Cons 'b' (Cons 'c' Nil))
	*Main> toList x
	"abc"
