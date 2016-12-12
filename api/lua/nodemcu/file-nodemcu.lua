return {
  file = {
    type = "lib",
    childs = {

      close = {
        type = "function",
        description = "Closes the open file, if any.",
        returns = "nil",
      },

      exists = {
        type = "function",
        description = "Determines whether the specified file exists.",
        returns = "true of the file exists (even if 0 bytes in size), and false if it does not exist",
      },

      flush = {
        type = "function",
        description = "Flushes any pending writes to the file system, ensuring no data is lost on a restart. Closing the open file using [file.close()](#fileclose) performs an implicit flush as well.",
        returns = "nil",
      },

      format = {
        type = "function",
        description = "Format the file system. Completely erases any existing file system and writes a new one. Depending on the size of the flash chip in the ESP, this may take several seconds.",
        returns = "nil",
      },

      fscfg = {
        type = "function",
        description = "Returns the flash address and physical size of the file system area, in bytes.",
        returns = "- flash address (number) , - size (number)",
      },

      fsinfo = {
        type = "function",
        description = "Return size information for the file system, in bytes.",
        returns = "- remaining (number) , - used      (number) , - total     (number)",
      },

      list = {
        type = "function",
        description = "Lists all files in the file system.",
        returns = "a lua table which contains the {file name: file size}, pairs",
      },

      open = {
        type = "function",
        description = "Opens a file for access, potentially creating it (for write modes). , When done with the file, it must be closed using file.close().",
        returns = "nil if file not opened, or not exists (read modes).  true if file opened ok.",
      },

      read = {
        type = "function",
        description = "Read content from the open file.",
        returns = "File content as a string, or nil when EOF",
      },

      readline = {
        type = "function",
        description = "Read the next line from the open file. Lines are defined as zero or more bytes ending with a EOL ('\n') byte. If the next line is longer than LUAL_BUFFERSIZE, this function only returns the first LUAL_BUFFERSIZE bytes (this is 1024 bytes by default).",
        returns = "File content in string, line by line, including EOL('\n'). Return nil when EOF.",
      },

      remove = {
        type = "function",
        description = "Remove a file from the file system. The file must not be currently open. , ###Syntax , file.remove(filename)",
        returns = "nil",
      },

      rename = {
        type = "function",
        description = "Renames a file. If a file is currently open, it will be closed first.",
        returns = "true on success, false on error.",
      },

      seek = {
        type = "function",
        description = "Sets and gets the file position, measured from the beginning of the file, to the position given by offset plus a base specified by the string whence.",
        returns = "the resulting file position, or nil on error",
      },

      write = {
        type = "function",
        description = "Write a string to the open file.",
        returns = "true if the write is ok, nil on error",
      },

      writeline = {
        type = "function",
        description = "Write a string to the open file and append '\n' at the end.",
        returns = "true if write ok, nil on error",
      },

    },
  },
}
