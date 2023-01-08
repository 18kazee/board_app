20.times do |index|
    Board.create!(
        user: User.offset(rand(User.count)).first,
        title: "タイトル#{index}",
        body: "本文#{index}"
    )
end