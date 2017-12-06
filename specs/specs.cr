
require "spec"
require "shell_out"

describe "inspect!" do

  it "prints inspected values if IS_DEV is non-empty" do
    shell_out("tmp/out/inspect.bang.dev").strip.should eq(
    %[
      :a
      :a, "a"
      :a, "a", 0
    ].strip.lines.map(&.strip).join("\n")
    )
  end # === it "prints inspected values if IS_DEV is non-empty"

  it "doesn't print anything if IS_DEV is empty" do
    shell_out("tmp/out/inspect.bang.prod").strip.empty?.should eq(true)
  end # === it "doesn't print anything if IS_DEV is empty"

end # === desc "inspect!"
