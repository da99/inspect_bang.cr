
{% if !(env("DEV_BUILD") || "").strip.empty? || !(env("IS_DEVELOPMENT") || "").strip.empty? %}
  macro inspect!(*args)
    puts([ \{{*args}} ].map(&.inspect).join(", "))
  end
{% else %}
  macro inspect!(*args)
  end
{% end %}

