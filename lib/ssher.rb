module SSHer
  class Application
    SERVER_FILE = File.expand_path("~/.ssher/ssh-servers")

    def initialize(argv)
      if !File.exist?(SERVER_FILE)
        system("mkdir ~/.ssher")
        system("touch ~/.ssher/ssh-servers")
      end
    end

    def run
      if File.zero?(SERVER_FILE)
        puts "Please add your servers to the ~/.ssher/ssh-servers file."
        return
      end
      counter = 1
      server_commands = []
      File.open(SERVER_FILE, "r") do |infile|
        while (line = infile.gets)
          split = line.split(":")
          puts "#{counter}. #{split[0]}"
          server_commands << split[1]
          counter += 1
        end
      end
      choice = gets.to_i
      system("clear")
      out = server_commands[choice-1]
      system("#{out}")
    end
  end
end
