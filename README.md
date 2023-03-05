# text_splitters

[![Gem Version](https://badge.fury.io/rb/text_splitters.svg)](https://rubygems.org/gems/text_splitters)
[![CI](https://github.com/ghiculescu/text_splitters/actions/workflows/ci.yml/badge.svg)](https://github.com/ghiculescu/text_splitters/actions/workflows/ci.yml)
[![Code Climate](https://codeclimate.com/github/ghiculescu/text_splitters/badges/gpa.svg)](https://codeclimate.com/github/ghiculescu/text_splitters)

Port of [langchain](https://github.com/hwchase17/langchain) text splitters to Ruby.

So far only the `RecursiveCharacterTextSplitter` is implemented. PRs for others are welcome!

---

- [Quick start](#quick-start)
- [Support](#support)
- [License](#license)
- [Code of conduct](#code-of-conduct)
- [Contribution guide](#contribution-guide)

## Quick start

```
$ gem install text_splitters
```

```ruby
require "text_splitters"
```

## Usage

### `RecursiveCharacterTextSplitter`

[Learn more about this splitter](https://langchain.readthedocs.io/en/latest/modules/indexes/examples/textsplitter.html#generic-recursive-text-splitting).

```ruby
text = "Madam Speaker, Madam Vice President, our First Lady and Second Gentleman. Members of Congress and the Cabinet. Justices of the Supreme Court. My fellow Americans."
splitter = ::TextSplitters::RecursiveCharacterTextSplitter.new(chunk_size: 100, chunk_overlap: 20)

output = splitter.split(text)

output[0] # "Madam Speaker, Madam Vice President, our First Lady and Second Gentleman. Members of Congress and the Cabinet."
output[1] # "and the Cabinet. Justices of the Supreme Court. My fellow Americans."
```

## Support

If you want to report a bug, or have ideas, feedback or questions about the gem, [let me know via GitHub issues](https://github.com/ghiculescu/text_splitters/issues/new) and I will do my best to provide a helpful answer. Happy hacking!

## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).

## Code of conduct

Everyone interacting in this project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Contribution guide

Pull requests are welcome!
