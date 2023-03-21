export default function (data) {
    let qty = 1

    if (options && options.size > 0) {
        qty = options.size
    }
    console.log("[11]",options)
    let res = ex.entry("buy", options.side, {qty: qty.toString(), comment: "开多"})
    console.log("[22]",res)
    return res
}