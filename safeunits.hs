#!/usr/bin/env runhaskell

module SafeUnits where

data Distance = Cm Double | In Double deriving (Eq, Ord)

instance Show Distance where
	show (Cm x) = show x ++ " cm"
	show (In x) = show x ++ " in"

toCm :: Distance -> Distance
toCm (Cm x) = Cm x
toCm (In x) = Cm (0.393700787401575 * x)

toIn :: Distance -> Distance
toIn (In x) = In x
toIn (Cm x) = In (2.54 * x)

data Farad = Farad Double deriving (Eq, Ord)

instance Show Farad where
	show (Farad x) = show x ++ " Farad"

capacitance :: Distance -> Farad
capacitance (Cm x) = Farad (1.113e-12 * x)

main :: IO ()
main = let
		cm = Cm 1
		in_ = toIn cm
	in do
		putStrLn $ (show cm) ++ " = " ++ (show in_)
		putStrLn $ (show cm) ++ " of capacitance = " ++ (show . capacitance) cm

		-- Error: Non-exhaustive patterns in function capacitance
		putStrLn $ (show in_) ++ " of capacitance = " ++ (show . capacitance) in_