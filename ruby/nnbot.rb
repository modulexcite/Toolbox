
#!/usr/bin/ruby
require 'socket'

#variables
server = 'freenode.net'
port   = 6667
nick   = '[Bot]'
chan   = '#'
chan3  = '#'
chan2  = '#'

fuck = 0
while fuck <= 1
TCPSocket.open(server, port) do |sock|
	sock.print("USER nndrop nndrop nndrop :by nicenamecrew\r\n")
	sock.print("Nick #{nick}\r\n")
	sock.print("JOIN #{chan}\r\n")
 	sock.print("JOIN #{chan2}\r\n")

while !sock.closed?
	line = sock.readline.chomp
	if line =~ /PING :(.*)/
		sock.print("PONG #{$1}\r\n")
	end
#help for the crew chan
	if line =~ /.*?PRIVMSG #{chan} :!help/
                  sock.print("PRIVMSG #{chan} : ==Commands List==\r\n")
                  sock.print("PRIVMSG #{chan} :!say <text> \r\n")
                  sock.print("PRIVMSG #{chan} :!rootable <kernelversion> \r\n")
        end
#help for the crack chan
        if line =~ /.*?PRIVMSG #{chan2} :!help/
                  sock.print("PRIVMSG #{chan2} : ==Command List==\r\n")
                  sock.print("PRIVMSG #{chan2} :!add-md5 <hash> \r\n")
                  sock.print("PRIVMSG #{chan2} :!add-sha1 <hash> \r\n")
                  sock.print("PRIVMSG #{chan2} :!add-lm <hash> \r\n")
                  sock.print("PRIVMSG #{chan2} :!add-ntlm <hash> \r\n")
                  sock.print("PRIVMSG #{chan2} :!add-ciscopix <hash> \r\n")
                  sock.print("PRIVMSG #{chan2} :!add-mscache <hash> \r\n")
                  sock.print("PRIVMSG #{chan2} : ==Command List==\r\n")
        end

#say :D
	if line =~ /.*?PRIVMSG #{chan} :!say (.*)/
		 sock.print("PRIVMSG #{chan} :#{$1}\r\n") 
	end	
        if line =~ /.*?PRIVMSG #{chan2} :!say (.*)/
                 sock.print("PRIVMSG #{chan} :#{$1}\r\n")
        end
#easter egg
        if line =~ /.*?PRIVMSG #{chan} :apt-get moo/ 
				sock.print("PRIVMSG #{chan} :         (__)  \r\n")
				sock.print("PRIVMSG #{chan} :         (oo)  \r\n")
				sock.print("PRIVMSG #{chan} :   /------\/  \r\n")
				sock.print("PRIVMSG #{chan} :  / |    ||    \r\n")
				sock.print("PRIVMSG #{chan} : *  /\---/\  \r\n")
				sock.print("PRIVMSG #{chan} :    ~~   ~~    \r\n")
				sock.print("PRIVMSG #{chan} :....Have you cowed today?... \r\n")
        end

#rootable v1.1  pre alpha xD(gonna figure out a clever way to switch to rootable.txt
	if line =~ /.*?PRIVMSG #{chan} :!rootable (.*)/
		if $1.include? "2.4.17"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> newlocal, kmod, uselib24\r\n") 
		end
		if $1.include? "2.4.18"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> brk, brk2, newlocal, kmod, km.2\r\n") 
		end
		if $1.include? "2.4.19"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> brk, brk2, newlocal, kmod, km.2\r\n") 
		end
		if $1.include? "2.4.20"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> ptrace, kmod, ptrace-kmod, brk, brk2, km.2\r\n") 
		end
		if $1.include? "2.4.21"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> brk, brk2, ptrace, ptrace-kmod\r\n") 
		end
		if $1.include? "2.4.22"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> brk, brk2, ptrace, ptrace-kmod, km.2\r\n") 
		end
		if $1.include? "2.4.22-10"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> loginx\r\n") 
		end
		if $1.include? "2.4.23"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> mremap_pte\r\n") 
		end
		if $1.include? "2.4.24"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> mremap_pte, uselib24\r\n") 
		end
		if $1.include? "2.4.25-1"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> uselib24\r\n") 
		end
		if $1.include? "2.4.27"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> uselib24\r\n") 
		end
		if $1.include? "2.6.2"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> mremap_pte, krad, h00lyshit\r\n") 
		end
		if $1.include? "2.6.5"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad, krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.6"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad, krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.7"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad, krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.8"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad, krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.8-5"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.9"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad, krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.9-34"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> r00t, h00lyshit\r\n") 
		end
		if $1.include? "2.6.10"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> krad, krad2, h00lyshit\r\n") 
		end
		if $1.include? "2.6.13"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> raptor, raptor2, h0llyshit, prctl\r\n") 
		end
		if $1.include? "2.6.14"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> raptor, raptor2, h0llyshit, prctl\r\n") 
		end
		if $1.include? "2.6.15"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> raptor, raptor2, h0llyshit, prctl\r\n") 
		end
		if $1.include? "2.6.16"
			sock.print("PRIVMSG #{chan} :#{$1} is rootable with -> raptor, raptor2, h0llyshit, prctl\r\n") 
		end
    end
  end
end
end
