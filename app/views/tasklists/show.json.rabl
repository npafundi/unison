object @tasklist

attributes :name
child(:tasks) {attributes :name, :details, :status}