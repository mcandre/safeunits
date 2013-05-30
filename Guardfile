guard :shell do
  watch(/(.+)\.hs/) do |m|
    title = "Test output"
    status = :success

    output = `runhaskell #{m[1]}`

    msg = output

    n msg, title, status

    "-> #{msg}"
  end
end
