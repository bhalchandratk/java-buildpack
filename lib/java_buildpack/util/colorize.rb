# Cloud Foundry Java Buildpack
# Copyright 2013-2017 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class String

  def bg_black
    tty? "\e[40m#{self}\e[0m"
  end

  def bg_blue
    tty? "\e[44m#{self}\e[0m"
  end

  def bg_brown
    tty? "\e[43m#{self}\e[0m"
  end

  def bg_cyan
    tty? "\e[46m#{self}\e[0m"
  end

  def bg_gray
    tty? "\e[47m#{self}\e[0m"
  end

  def bg_green
    tty? "\e[42m#{self}\e[0m"
  end

  def bg_magenta
    tty? "\e[45m#{self}\e[0m"
  end

  def bg_red
    tty? "\e[41m#{self}\e[0m"
  end

  def black
    tty? "\e[30m#{self}\e[0m"
  end

  def blink
    tty? "\e[5m#{self}\e[25m"
  end

  def blue
    tty? "\e[34m#{self}\e[0m"
  end

  def bold
    tty? "\e[1m#{self}\e[22m"
  end

  def brown
    tty? "\e[33m#{self}\e[0m"
  end

  def cyan
    tty? "\e[36m#{self}\e[0m"
  end

  def gray
    tty? "\e[37m#{self}\e[0m"
  end

  def green
    tty? "\e[32m#{self}\e[0m"
  end

  def italic
    tty? "\e[3m#{self}\e[23m"
  end

  def magenta
    tty? "\e[35m#{self}\e[0m"
  end

  def red
    tty? "\e[31m#{self}\e[0m"
  end

  def reverse_color
    tty? "\e[7m#{self}\e[27m"
  end

  def underline
    tty? "\e[4m#{self}\e[24m"
  end

  private

  def tty?(value)
    puts $stdout.tty?
    value
    # $stdout.tty? ? value : self
  end

end