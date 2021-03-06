/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GProxy.html
 * outPack = gio
 * outFile = ProxyT
 * strct   = GProxy
 * realStrct=
 * ctorStrct=
 * clss    = ProxyT
 * interf  = ProxyIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_initable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.IOStream
 * 	- gio.ProxyAddress
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GIOStream* -> IOStream
 * 	- GProxy* -> ProxyIF
 * 	- GProxyAddress* -> ProxyAddress
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ProxyT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import glib.ErrorG;
public import glib.GException;
public import gio.AsyncResultIF;
public import gio.Cancellable;
public import gio.IOStream;
public import gio.ProxyAddress;




/**
 * Description
 * A GProxy handles connecting to a remote host via a given type of
 * proxy server. It is implemented by the 'gio-proxy' extension point.
 * The extensions are named after their proxy protocol name. As an
 * example, a SOCKS5 proxy implementation can be retrieved with the
 * name 'socks5' using the function
 * g_io_extension_point_get_extension_by_name().
 */
public template ProxyT(TStruct)
{
	
	/** the main Gtk struct */
	protected GProxy* gProxy;
	
	
	public GProxy* getProxyTStruct()
	{
		return cast(GProxy*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Given connection to communicate with a proxy (eg, a
	 * GSocketConnection that is connected to the proxy server), this
	 * does the necessary handshake to connect to proxy_address, and if
	 * required, wraps the GIOStream to handle proxy payload.
	 * Since 2.26
	 * Params:
	 * proxy = a GProxy
	 * connection = a GIOStream
	 * proxyAddress = a GProxyAddress
	 * cancellable = a GCancellable. [allow-none]
	 * Returns: a GIOStream that will replace connection. This might be the same as connection, in which case a reference will be added. [transfer full]
	 * Throws: GException on failure.
	 */
	public IOStream gProxyConnect(IOStream connection, ProxyAddress proxyAddress, Cancellable cancellable)
	{
		// GIOStream * g_proxy_connect (GProxy *proxy,  GIOStream *connection,  GProxyAddress *proxy_address,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_proxy_connect(getProxyTStruct(), (connection is null) ? null : connection.getIOStreamStruct(), (proxyAddress is null) ? null : proxyAddress.getProxyAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) p);
	}
	
	/**
	 * Asynchronous version of g_proxy_connect().
	 * Since 2.26
	 * Params:
	 * proxy = a GProxy
	 * connection = a GIOStream
	 * proxyAddress = a GProxyAddress
	 * cancellable = a GCancellable. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = callback data. [closure]
	 */
	public void gProxyConnectAsync(IOStream connection, ProxyAddress proxyAddress, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_proxy_connect_async (GProxy *proxy,  GIOStream *connection,  GProxyAddress *proxy_address,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_proxy_connect_async(getProxyTStruct(), (connection is null) ? null : connection.getIOStreamStruct(), (proxyAddress is null) ? null : proxyAddress.getProxyAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * See g_proxy_connect().
	 * Since 2.26
	 * Params:
	 * result = a GAsyncResult
	 * Returns: a GIOStream. [transfer full]
	 * Throws: GException on failure.
	 */
	public IOStream gProxyConnectFinish(AsyncResultIF result)
	{
		// GIOStream * g_proxy_connect_finish (GProxy *proxy,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_proxy_connect_finish(getProxyTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) p);
	}
	
	/**
	 * Lookup "gio-proxy" extension point for a proxy implementation that supports
	 * specified protocol.
	 * Since 2.26
	 * Params:
	 * protocol = the proxy protocol name (e.g. http, socks, etc)
	 * Returns: return a GProxy or NULL if protocol is not supported. [transfer full]
	 */
	public static ProxyIF gProxyGetDefaultForProtocol(string protocol)
	{
		// GProxy * g_proxy_get_default_for_protocol (const gchar *protocol);
		auto p = g_proxy_get_default_for_protocol(Str.toStringz(protocol));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Proxy)(cast(GProxy*) p);
	}
	
	/**
	 * Some proxy protocols expect to be passed a hostname, which they
	 * will resolve to an IP address themselves. Others, like SOCKS4, do
	 * not allow this. This function will return FALSE if proxy is
	 * implementing such a protocol. When FALSE is returned, the caller
	 * should resolve the destination hostname first, and then pass a
	 * GProxyAddress containing the stringified IP address to
	 * g_proxy_connect() or g_proxy_connect_async().
	 * Since 2.26
	 * Returns: TRUE if hostname resolution is supported.
	 */
	public int gProxySupportsHostname()
	{
		// gboolean g_proxy_supports_hostname (GProxy *proxy);
		return g_proxy_supports_hostname(getProxyTStruct());
	}
}
