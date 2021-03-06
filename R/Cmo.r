#
#   extraTechInds: extra Technical Indicators of TTR and quantmod
#
#   Copyright (C) 2016  Chen Chaozong
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

#'Chande Momentum Oscillator (different from TTR)
#'
#'@aliases Cmo
#'@param x Object that is coercible to xts or matrix and contains
#'High-Low-Close prices.
#'@param n Number of periods for moving average.
#'@param m A function or a string naming the function to be called.
#'@author Chen Chaozong
#'@seealso See \code{\link{EMA}}, \code{\link{SMA}}, etc. for moving average
#'options; and note Warning section.  See \code{\link{ATR}}, which uses true
#'range.  See \code{\link{chaikinVolatility}} for another volatility measure.
#'@keywords ts
#'@export
"Cmo" <-
function (x, n = 14, m = 1)
{
  x <- try.xts(x, error = as.matrix)
  mtm <- momentum(x, n = m)
  cmo <- 100 * runSum(mtm, n = n)/runSum(abs(mtm), n = n)
  names(cmo) <- "CMO"
  reclass(cmo, x)
}
