formula := "nostalgia-rs/tap/nostalgia"

style:
    brew style Formula/nostalgia.rb

audit:
    brew audit --strict --online --new {{formula}}

install:
    brew install --build-from-source {{formula}}

test:
    brew test {{formula}}
