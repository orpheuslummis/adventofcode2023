
def firstAndLastDigit (s : String) : String :=
  match s.find Char.isDigit, s.revFind Char.isDigit with
  | (fst), (some lst) => (s.get fst).toString ++ (s.get lst).toString
  | _, _ => ""

def day1a : IO Unit :=
  do
    let lines ← IO.FS.lines "./data/day1a.txt"
    let digits := lines.map firstAndLastDigit
    let sum := digits.foldl (λ acc s => acc + s.toNat!) 0
    IO.println s!"Sum: {sum}"

#eval day1a
