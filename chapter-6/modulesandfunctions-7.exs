defmodule Libraries do
  def float_to_string(f), do: :io_lib.format("~.2f", [f])
  def get_os_env(name), do: System.get_env(name)
  def get_file_extension(path), do: Path.extname(path)
  def get_process_dir, do: File.cwd
  def json_to_struct(json), do: struct = Poison.decode!(json) # the book told me to not install it
  def system_hello, do: System.cmd("echo", ["hello"], env: [{"MIX_ENV", "test"}])
end
