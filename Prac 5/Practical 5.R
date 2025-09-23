chess_data <- c(
  "dark", "king",
  "dark", "queen",
  "dark", "pawn",
  "dark", "pawn",
  "dark", "knight",
  "light", "bishop",
  "light", "king",
  "light", "rook",
  "light", "pawn",
  "light", "pawn"
)
print(chess_data)

chess_matrix1 <- matrix(chess_data, nrow = 10)
colnames(chess_matrix1) <- c("Player", "Piece")
print(chess_matrix1)

player_vec <- c("dark", "dark", "dark", "dark", "dark", "light", "light", "light", "light", "light")
piece_vec <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess_matrix2 <- cbind(Players = player_vec, Pieces = piece_vec)
print(chess_matrix2)

matrix_length <- dim(chess_matrix1)
print(matrix_length)
