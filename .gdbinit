set debuginfod enabled off
set print thread-events off
set height 0
set pagination off
set print pretty on
set confirm off
handle SIGPIPE nostop noprint pass

define whereall
thread apply all where
end

define wa
thread apply all where
end

document whereall
Alias for 'thread apply all where'
end

document wa
Alias for 'thread apply all where'
end
